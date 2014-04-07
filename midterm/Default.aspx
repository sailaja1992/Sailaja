<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <meta name="description" content="MyRoutePlan calculates the smartest route, using actual road speed data, real-time traffic information and daily map updates."/>
  
  <meta name="verify-v1" content="PZ31MgGEqBLG/+I3zvHgSpazq/e0cTMwwOTKXwWv704=" />
  
  <meta name="DCS.dcssip" content="plan.myroute.com">
  
  <meta name="DCS.dcsuri" content="">
  
  <meta name="DCS.dcsref" content="">
  
  <meta name="DCS.dcsqry" content="">
  
  <meta name="WT.cg_n" content="MyRoutePlanner">
  
  <meta name="WT.ti" content="">
  
  <meta name="WT.z_language" content="">
  
  <meta name="WT.es" content="">
  
  <title>
    MyRoute Plan: helps you plan your travel showing the easiest path to reach your sedtination and allowing you to customize your travel
  </title>
 
  
  <link type="text/css" rel="stylesheet" href="http://static.routes.tomtom.com/css/main.css?bid=180628" />
  
  <script>
      var isIE6 = false;
  </script>
  
  <!--[if IE 6]>

<link type="text/css" rel="stylesheet" href="http://static.routes.tomtom.com/css/ie6override.css?bid=180628" />

<script>
isIE6 = true;
</script>

<![endif]-->
  
  <!--[if IE 7]>

<link type="text/css" rel="stylesheet" href="http://static.routes.tomtom.com/css/ie7override.css?bid=180628" />

<![endif]-->
  </head>
  <body>
    
    <div id="main_canvas">
      
      <div id="header">
        
        
         
        </div>
        
        <div id="tomtom_personal_navigator">
          
          <iframe id="tomtom_personal_navigator_iframe" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" allowtransparency="true">
            
          </iframe>
          
        </div>
        
        <div id="global-nav">
          
          
  <div id="locale_dropbox_collapsed" class="dropbox_collapsed">
  </div>
  
  </div>
  
  <div id="sub_canvas">
    
    <div id="toolbar">
      
      <h1>
        <a id="logo_tomtom" href="/">
          Route Planner
        </a>
      </h1>
      
      <div id="toolbar_menu_div">
        
        <table class="bar" id="toolbar_table">
          
          <tr>
            
            <td class="bar_left">
              &nbsp;
            </td>
            
            <td class="bar_stretch" id="toolbar_left">
              
              <a id="link_to_this_map_view" href="javascript:;">
                <span id="link_to_this_map_view_text">
                  Link
                </span>
              </a>
              
              <a id="legend_link" href="javascript:;">
                <span id="legend_link_text">
                  Legend
                </span>
              </a>
              
              <a id="help" target="_blank" href="/help/faq">
                <span id="help_text">
                  Help
                </span>
              </a>
              
              <a id="print" href="javascript:;">
                Print
              </a>
              
              <a id="home_link" href="#">
                <span id="home_link_text">
                  Home location
                </span>
              </a>
              
            </td>
            
            <td class="bar_stretch" id="td_view_traffic_info">
              
              <a class="toolbar_right_item_a" id="view_traffic_info" href="#">
                
                <span id="view_traffic_info_text">
                  Show traffic information
                </span>
                
              </a>
              
              <br/>
              
              <span class="toggle_traffic_update" id="view_traffic_info_update_text" name="view_traffic_info_update_text">
              </span>
              
            </td>
            
            <td class="bar_right">
              &nbsp;
            </td>
            
          </tr>
          
        </table>
        
      </div>
      
    </div>
    
    <div id="map_canvas">
      
      <div id="maploading">
        <div id='maploadingicon'>
        </div>
      </div>
      
      <div id="map">
      </div>
      
    </div>
    
  </div>
  
  <div id="footer">
    
  
  <div class="right">
    
    <ul>
      
     
      
    </ul>
    
  </div>
  </div>
  
  <div id="route_planner" class="routePlannerOuter">
    
    <div id="leftPanelTabs">
      
      <div id="planRoute" class="routeActiveTab">
        
        <span id="plan_a_route" class="tabLabel">
          Plan a route
        </span>
        
  </div>
  
  <div id="findLocation" class="locationInactiveTab">
    
    <span id="find_a_location" class="tabLabel">
      Find a location
    </span>
    
  </div>
  
  </div>
  
  <div class="routePlannerContent" id="route_planner_content">
    
    <div id="route_planner_errors" class="routePlannerErrors">
      
    </div>
    
    <div id="location_content" class="tab_content" style="display:none">
      
      <div id="location_container" class="locationContainer">
        
        <div id="standard_location" class="form">
          
          <div id="standard_location_labels" class="labels">
            
            <div class="label_div">
              <label id="location_label" class="standard_label">
                Location:
              </label>
            </label>
          </div>
          
        </div>
        
        <div id="standard_location_inputs" class="inputs">
          
          <div class="input_div">
            
            <span class="input_left">
            </span>
            
            <span class="input_middle">
              
              <input id="location" type="text"/>
              
            </span>
            
            <span class="input_right">
            </span>
            
          </div>
          
          <div class="comment">
            
            <span id="find_location_comment">
              e.g., "209 Emauel Cleaver II Blvd, KC, MO, USA"
            </span>
            
          </div>
          
        </div>
        
        <div class="clear">
        </div>
        
      </div>
      
      <div id="location_controls">
        
        <span id="standard_find_button" class="routePlannerButton">
          
          <a id="standard_find_button_link" class="button" href="#">
            
            <span id="button_find">
              Find location
            </span>
          </a>
          
        </span>
        
      </div>
      
    </div>
    
    <div id="location_loading" style="display:none">
      
      <img height="25" width="24" class="inprogress" src="http://static.routes.tomtom.com/images/inprogress.gif?bid=180628"/>
      &nbsp;
      <span id="route_loading" class="loading">
        Please wait...
      </span>
      
      <a id="cancel_find_location" href="#">
        cancel
      </a>
      
    </div>
    
    <div id="findLocationResultDiv" style="display:none">
      
      <div id="findLocationResult">
        
        <span id="ie6markerspan" style="display:none;width:16px;height:16px">
        </span>
        
        <img id='findLocationResultImg' class="markerImageSmall"/>
        
        <span id="findLocationResult_street">
        </span>
        
      </div>
      
    </div>
    
    <div id="location_alternatives_container" style="display:none">
      
      <div id="did_you_mean" class="important">
        &nbsp;
      </div>
      
      <div id="location_alt" class="altlist">
        &nbsp;
      </div>
      
      <div id="leftPanelBannerAdManagerInAltResult" class="leftPanelBanner">
        
        <iframe id="leftPanelBannerAdFrameInAltResult" name="leftPanelBannerAdFrameInAltResult" scrolling="no" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" border="0" src="" />
        
      </iframe>
      
    </div>
    
  </div>
  
  <div id="leftPanelBannerAdManagerInFindlocation" class="leftPanelBanner">
    
    <iframe id="leftPanelBannerAdFrameInFindlocation" name="leftPanelBannerAdFrameInFindlocation" scrolling="no" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" border="0" src="" style="display:none">
      
    </iframe>
    
  </div>
  
  </div>
  
  <div id="directions_content" class="tab_content" style="display:block">
    
    <div id="input_area">
      
      <div id="planroute_container" class="routePlannerContainer">
        
        <div id="standard_planroute" class="form">
          
          <div id="standard_planroute_labels" class="labels">
            
            <div class="label_div">
              <label id="route_planner_label_for_departure" class="standard_label">
                From:
              </label>
            </div>
            
            <br/>
            
            <div class="label_div">
              <label id="route_planner_label_for_destination" class="standard_label">
                To:
              </label>
            </div>
            
            <div class="label_div">
              <label id="avoid_traffic_label_text" class="standard_label">
                Traffic:
              </label>
            </div>
            
          </div>
          
          <div id="standard_planroute_inputs" class="inputs">
            
            <div class="input_div">
              
              <span class="input_left">
              </span>
              
              <span class="input_middle">
                <input id="departure" type="text"/>
              </span>
              
              <span class="input_right">
              </span>
              
            </div>
            
            <div class="comment">
              
              <span id="departure_comment">
                e.g., "1 Bridge St, London"
              </span>
              
            </div>
            
            <div class="input_div" style='position:relative;top:-3px;padding-top:0px;left:0px;' tabindex="-1">
              
              <span class="input_left">
              </span>
              
              <span class="input_middle">
                <input id="destination" type="text"/>
              </span>
              
              <span class="input_right">
              </span>
              
            </div>
            
            <div id="cb_avoid_traffic" style="display: block;">
              
              <a id="cb_avoid_traffic_link" class="" href="#">
                <span id="tripAdvisor_avoid_traffic_text">
                  Minimise delays
                </span>
              </a>
              
            </div>
            
            <div id="cb_avoid_traffic_disabled" style="display: none;">
              
              <span id="tripAdvisor_avoid_traffic_disabled_text">
                Minimise delays
              </span>
              
            </div>
            
          </div>
          
          <div class="clear">
          </div>
          
        </div>
        
        <div id="standard_tripAdvisor">
          
          <div class="label_div" id="tripAdvisor">
            
            <label class="standard_label" for="departure_dropbox_collapsed" id="tripAdvisor_leaving">
              Leave:
            </label>
            
          </div>
          
          <div id="tripAdvisor_container" style="left: 62px;">
            
            <div style="" class="dropbox_collapsed" id="departure_dropbox_collapsed">
              
              <a href="#" class="root" id="departure_dropbox_collapsed_root">
                
                <span style="width: 209px;" class="container">
                  
                  <div class="flag" style="color: rgb(84, 84, 84);" id="departure_dropbox_collapsed_value">
                    Right now                                        
                  </div>
                  
                  <div class="arrow_down" id="arrow_departure_dropbox">
                    
                  </div>
                  
                </span>
                
              </a>
              
            </div>
            
            <div class="dropbox_collapsed" id="day_dropbox_collapsed">
              
              <a href="#" class="root" id="day_dropbox_collapsed_root">
                
                <span style="width: 120px;" class="container">
                  
                  <div class="flag" style="color: rgb(204, 204, 204);" id="day_dropbox_collapsed_value">
                    Today                                        
                  </div>
                  
                  <div class="arrow_disabled" id="arrow_day_dropbox">
                    
                  </div>
                  
                </span>
                
              </a>
              
            </div>
            
            <div class="dropbox_collapsed" id="time_dropbox_collapsed">
              
              <a href="#" class="root" id="time_dropbox_collapsed_root" style="cursor: default;">
                
                <span style="width: 82px; cursor: default;" class="container">
                  
                  <div class="flag" style="color: rgb(204, 204, 204);" id="time_dropbox_collapsed_value">
                    10:30                                        
                  </div>
                  
                  <div class="arrow_disabled" id="arrow_time_dropbox">
                  </div>
                  
                </span>
                
              </a>
              
              <input class="dropboxInput" id="time_input" style="color: rgb(204, 204, 204); cursor: default;" disabled=""/>
              
            </div>
            
            <div id="tripAdvisor_leaving_help">
              
              <a id="trip_advisor_help" href="javascript:;">
              </a>
              
            </div>
            
          </div>
          
        </div>
        
        <div id="standardRouteControls" class="routeControlsClass">
          
          <span id="reverseroute_button">
            
            <a id="reverse_route_link" class="button_disabled" href='#'>
              
              <span id="reverse_route_link_text">
                Reverse
              </span>
              
            </a>
            
          </span>
          
          <span id="clearroute_button">
            
            <a id="clear_route_link" class="button_disabled" href='#'>
              
              <span id="clear_route_link_text">
                Clear route
              </span>
              
            </a>
            
          </span>
          
          <span id="planroute_button">
            
            <a id="standard_planroute_button_link" class="button" href="#">
              
              <span id="button_plan_trip">
                Plan route
              </span>
              
            </a>
            
          </span>
          
          <span id="replanroute_button" style="display:none">
            
            <a id="standard_replan_button_link" class="button" href="#">
              
              <span id="button_replan_trip">
                Replan
              </span>
              
            </a>
            
          </span>
          
        </div>
        
        <div id="plannedRouteControls" style="display:none">
          
          <ul>
            
            <li class="pr_list_item" id="show_instructions">
              <a class="pr_list_item_a" id="show_instructions_link" href="#">
                <span id="show_instructions_link_text">
                  Show driving directions
                </span>
              </a>
            </li>
            
            <li class="pr_list_item" id="show_route_summary">
              <a class="pr_list_item_a" id="show_route_summary_link" href="#">
                <span id="show_route_summary_link_text">
                  Back to route summary
                </span>
              </a>
            </li>
            
          </ul>
          
        </div>
        
      </div>
      
      <div id="planroute_alternatives_container" class="planroute_alternatives_container" style="display:none">
        
        <div id="departure_alt_label">
          <span id="departure_alternatives_label">
            From:
          </span>
          
        </div>
        
        <div id="destination_alt_label">
          <span id="destination_alternatives_label">
            To:
          </span>
          
        </div>
        
        <span id="planroute_did_you_mean" class="important">
        </span>
        
        <div id="planroute_alt" class="altlist">
          
        </div>
        
        <span id="planroute_alt_input_label">
          Or review your input:
        </span>
        
        <div class="form">
          
          <div class="input_div">
            
            <span class="input_left">
            </span>
            
            <span class="input_middle">
              <input id="planroute_alt_input" type="text"/>
            </span>
            
            <span class="input_right">
            </span>
            
          </div>
          
        </div>
        
        <div id="altRouteControls" class="routeControlsClass">
          
          <div id="planroute_button_alt" class="routePlannerButton">
            
            <a id="alt_planroute_button_link" class="button" href="#">
              
              <span id="button_plan_trip_alt">
                OK
              </span>
              
            </a>
            
          </div>
          
        </div>
        
      </div>
      
      <div id="loadingRoute" style="display:none">
        
        <img  height="25" width="24" class="inprogress" src="http://static.routes.tomtom.com/images/inprogress.gif?bid=180628"/>
        &nbsp;
        <span id="loading_route_msg" class="loading">
          Please wait...
        </span>
        
        <a id="cancel_plan_route" href="#">
          cancel
        </a>
        
      </div>
      
    </div>
    
    <div id="planrouteResult" style="display:none">
      
      <div id="planrouteSummary">
        
        <div id="planrouteResultdeparture" class="routeInstructions">
        </div>
        
        <div id="routeTotals" class='routeInstructions'>
        </div>
        
        <div id="planrouteResultdestination" class="routeInstructions">
        </div>
        
      </div>
      
      <div id="routeInstructions" class="routeInstructions" style="display:none">
        
      </div>
      
      <div id="leftPanelBannerAdManagerInResult" class="leftPanelBanner">
        
        <iframe id="leftPanelBannerAdFrameInResult" name="leftPanelBannerAdFrameInResult" scrolling="no" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" border="0" src="">
          
        </iframe>
        
      </div>
      
    </div>
    
    <div id="leftPanelBannerAdManagerInPlanroute" class="leftPanelBanner">
      
      <iframe id="leftPanelBannerAdFrameInPlanroute" name="leftPanelBannerAdFrameInPlanroute" scrolling="no" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" border="0" src="" style="display:none">
        
      </iframe>
      
    </div>
    
  </div>
  
  </div>
  
  <div id="route_planner_slider" class="routePlannerSliderUp" >
  </div>
  
  <div id="autocompleter" class="dropbox_expanded scrollable_dropbox" style="display:none;padding-bottom:0px">
  </div>
  
  <div id="options_shadow_l" class="shadow">
  </div>
  
  <div id="options_shadow_r" class="shadow">
  </div>
</div>

<div id="video_panel" class="video_box">
  
  <div class="innerWrapper">
    
    <span id="film_header" class="tabLabel" style="width: 70px;">
      Introduction Video
    </span>
    
    <span class="close_button">
      
     
      
    </span>
    
    <div class="flash_video"  style="position: relative; z-index: 9999;" >
      
    </div>
    
  </div>
</div>


<script type="text/javascript" src="http://static.routes.tomtom.com/js/tomtom/Bootstrap.js?bid=180628">
</script>
<script type="text/javascript" src="http://static.routes.tomtom.com/js/tomtom/TomTom.js?bid=180628">
</script>

</body>
</html>