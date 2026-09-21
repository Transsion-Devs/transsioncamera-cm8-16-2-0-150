.class public final synthetic Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;

    iget v1, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->$r8$lambda$e4GLtkYolcGQxSgxoxE-1nBTy-4(Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
