.class public final synthetic Lcom/transsion/camera/utils/monitor/CloudEngineThub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    check-cast p1, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->$r8$lambda$GnhT_aRK6vALJnN7vfyAC3oz0oo(Lorg/json/JSONObject;Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)V

    return-void
.end method
