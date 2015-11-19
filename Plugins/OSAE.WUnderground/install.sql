CALL osae_sp_object_type_add ('WEATHER','Weather Data','','CONTROL',0,1,0,1);
CALL osae_sp_object_type_state_add('WEATHER','ON','Current');
CALL osae_sp_object_type_state_add('WEATHER','OFF','Obsolete');
CALL osae_sp_object_type_event_add('WEATHER','ON','Updated');
CALL osae_sp_object_type_event_add('WEATHER','OFF','Hung');
CALL osae_sp_object_type_event_add('WEATHER','DAY','Day');
CALL osae_sp_object_type_event_add('WEATHER','NIGHT','Night');
CALL osae_sp_object_type_event_add('WEATHER','DAWN','Dawn');
CALL osae_sp_object_type_event_add('WEATHER','DUSK','Dusk');
CALL osae_sp_object_type_method_add('WEATHER','ON','Updated','','','','');
CALL osae_sp_object_type_method_add('WEATHER','OFF','Hung','','','','');
CALL osae_sp_object_type_property_add('WEATHER','Night1 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night2 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night3 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night4 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day1 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day2 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day3 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day4 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day1 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day2 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day3 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day4 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Conditions','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Wind Speed','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Wind Directions','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Humidity','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Pressure','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Dewpoint','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Visibility','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Windchill','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Temp','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Last Updated','DateTime','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day5 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day6 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night5 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night6 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day7 High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day5 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day6 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day7 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night7 Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night1 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night2 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night3 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night4 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night5 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night6 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night7 Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Tonight Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Today Precip','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night1 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night2 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night3 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night4 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night5 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night6 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night7 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Tonight Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Today Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day1 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day2 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day3 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day4 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day5 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day6 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day7 Forecast','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night1 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night2 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night3 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night4 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night5 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night6 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night7 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Tonight Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Today Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day1 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day2 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day3 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day4 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day5 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day6 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day7 Image','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night1 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night2 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night3 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night4 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night5 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night6 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Night7 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Tonight Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Today Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day1 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day2 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day3 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day4 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day5 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day6 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Day7 Summary','String','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Sunrise','DateTime','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Sunset','DateTime','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Tonight Low','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Today High','Integer','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Latitude','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','Longitude','Float','','',0);
CALL osae_sp_object_type_property_add('WEATHER','DayNight','String','','',0);


CALL osae_sp_object_type_add ('WUNDERGROUND','Weather Underground','','PLUGIN',1,0,0,1);
CALL osae_sp_object_type_state_add('WUNDERGROUND','ON','Running');
CALL osae_sp_object_type_state_add('WUNDERGROUND','OFF','Stopped');
CALL osae_sp_object_type_event_add('WUNDERGROUND','ON','Started');
CALL osae_sp_object_type_event_add('WUNDERGROUND','OFF','Stopped');
CALL osae_sp_object_type_method_add('WUNDERGROUND','ON','Start','','','','');
CALL osae_sp_object_type_method_add('WUNDERGROUND','OFF','Stop','','','','');
CALL osae_sp_object_type_method_add('WUNDERGROUND','UPDATE','Update','','','','');
CALL osae_sp_object_type_property_add('WUNDERGROUND','PWS','String','KMOKANSA61','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','State','String','KS','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','Forecast Interval','Integer','60','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','Metric','Boolean','FALSE','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','DuskPre','Integer','0','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','DuskPost','Integer','0','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','DawnPre','Integer','0','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','DawnPost','Integer','0','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','Key','String','','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','City','String','Ellis','',0);
CALL osae_sp_object_type_property_add('WUNDERGROUND','Conditions Interval','Integer','5','',0);

