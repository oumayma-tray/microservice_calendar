import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:microservice_calendar/calendar/EventActionsDialog.dart';
import 'package:microservice_calendar/service_calendar.dart';

class HolidayEventsPage extends StatelessWidget {
  final CalendarService _calendarService = CalendarService();
  @override
  Widget build(BuildContext context) {
    User? currentUser = FirebaseAuth.instance.currentUser;

    Future<void> _deleteEvent(String eventId) async {
      try {
        await _calendarService.deleteEvent(eventId);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Event deleted successfully')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete event: $e')),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Holiday Events",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future:
            _calendarService.fetchUserEventsByType(currentUser!.uid, 'Holiday'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
                child: Text('Error fHolidayhing events: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No Holiday events found'));
          } else {
            List<Map<String, dynamic>> HolidayEvents = snapshot.data!;
            return ListView.builder(
              itemCount: HolidayEvents.length,
              itemBuilder: (context, index) {
                final event = HolidayEvents[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Text(
                        event['type'] != null
                            ? event['type'][0]
                            : 'N/A', // Handle null 'type' field
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(event['title'],
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "${event['description']} - ${event['start_date']}",
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.edit, color: Colors.deepPurple),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => EventActionsDialog(
                            eventId: event['id'],
                            event: event,
                            onDelete: _deleteEvent,
                          ),
                        );
                      },
                    ),
                    onTap: () {
                      // Optionally, add an action or navigation on tap
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
