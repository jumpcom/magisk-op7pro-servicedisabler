#!/system/bin/sh

CMD=enable
PM=/system/bin/pm
PLIST=`/system/bin/cmd package list packages | grep -v Swift | sort | sed 's/package://g'`

do_process(){
	ui_print "$CMD $1"
	$PM $CMD $1 2> /dev/null
}

    do_process "com.braintreepayments.api.internal.AnalyticsIntentService"
    do_process "com.facebook.ads.internal.ipc.AdsMessengerService"
    do_process "com.facebook.ads.internal.ipc.AdsProcessPriorityService"
    do_process "com.facebook.internal.FacebookInitProvider"
    do_process "com.google.analytics.tracking.android.CampaignTrackingReceiver"
    do_process "com.google.analytics.tracking.android.CampaignTrackingService"
    do_process "com.google.android.gms.ads.MobileAdsInitProvider"
    do_process "com.google.android.gms.analytics.AnalyticsJobService"
    do_process "com.google.android.gms.analytics.AnalyticsReceiver"
    do_process "com.google.android.gms.analytics.AnalyticsService"
    do_process "com.google.android.gms.analytics.AnalyticsTaskService"
    do_process "com.google.android.gms.auth.api.signin.RevocationBoundService"
    do_process "com.google.android.gms.measurement.AppMeasurementInstallReferrerReceiver"
    do_process "com.google.android.gms.measurement.AppMeasurementJobService"
    do_process "com.google.android.gms.measurement.AppMeasurementReceiver"
    do_process "com.google.android.gms.measurement.AppMeasurementService"
    do_process "com.google.firebase.perf.provider.FirebasePerfProvider"
    do_process "com.google.firebase.provider.FirebasePerfProvider"
    do_process "com.google.android.apps.xcn.libraries.clearcut.persistence.LogCommitService"
	do_process "com.android.traceur"
	do_process "com.oneplus.opbugreportlite"
	do_process "com.oneplus.brickmode"
	do_process "net.oneplus.odm"
	do_process "net.oneplus.odm.provider"
	do_process "com.android.traceur"
