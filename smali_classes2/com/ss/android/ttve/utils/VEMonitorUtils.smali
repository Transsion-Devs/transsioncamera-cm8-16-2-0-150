.class public Lcom/ss/android/ttve/utils/VEMonitorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorCommonLog(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    return-void
.end method

.method public static monitorCommonLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public static monitorDirectOnTimer(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 3

    return-void
.end method

.method public static monitorOnTimer(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 3

    return-void
.end method

.method public static monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V
    .registers 3

    .line 13
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
