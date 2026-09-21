.class public Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBatteryLevel:I

.field public mScreenOnTime:I

.field public mTimeStamp:J


# direct methods
.method public constructor <init>(JII)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    .line 10
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    .line 11
    iput p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    return p0
.end method

.method public getScreenOnTime()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    return p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    return-wide v0
.end method

.method public setBatteryLevel(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    return-void
.end method

.method public setScreenOnTime(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    return-void
.end method
