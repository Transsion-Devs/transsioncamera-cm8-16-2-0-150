.class public Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBatteryLevel:I

.field public mScreenOffActiveTime:I

.field public mScreenOnTime:I

.field public mTimeStamp:J


# direct methods
.method public constructor <init>(JII)V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    .line 11
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    .line 12
    iput p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    return-void
.end method

.method public constructor <init>(JIII)V
    .registers 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    .line 17
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    .line 18
    iput p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    .line 19
    iput p5, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOffActiveTime:I

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    return p0
.end method

.method public getScreenOffActiveTime()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOffActiveTime:I

    return p0
.end method

.method public getScreenOnTime()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    return p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    return-wide v0
.end method

.method public setBatteryLevel(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mBatteryLevel:I

    return-void
.end method

.method public setScreenOffActiveTime(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOffActiveTime:I

    return-void
.end method

.method public setScreenOnTime(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mScreenOnTime:I

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 37
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;->mTimeStamp:J

    return-void
.end method
