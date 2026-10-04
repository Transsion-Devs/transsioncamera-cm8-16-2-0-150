.class public Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBackground:I

.field public mBackgroundPower:D

.field public mConsumer:D

.field public mForeground:I

.field public mForegroundPower:D

.field public mUid:I


# direct methods
.method public constructor <init>(IIID)V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    .line 13
    iput p2, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    .line 14
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    .line 15
    iput-wide p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    return-void
.end method

.method public constructor <init>(IIIDDD)V
    .registers 10

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    .line 20
    iput p2, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    .line 21
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    .line 22
    iput-wide p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    .line 23
    iput-wide p6, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForegroundPower:D

    .line 24
    iput-wide p8, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackgroundPower:D

    return-void
.end method


# virtual methods
.method public getBackground()I
    .registers 1

    .line 69
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    return p0
.end method

.method public getBackgroundPower()D
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackgroundPower:D

    return-wide v0
.end method

.method public getConsumer()D
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    return-wide v0
.end method

.method public getForeground()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    return p0
.end method

.method public getForegroundPower()D
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForegroundPower:D

    return-wide v0
.end method

.method public getUid()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    return p0
.end method

.method public setBackground(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    return-void
.end method

.method public setBackgroundPower(D)V
    .registers 3

    .line 112
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackgroundPower:D

    return-void
.end method

.method public setConsumer(D)V
    .registers 3

    .line 96
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    return-void
.end method

.method public setForeground(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    return-void
.end method

.method public setForegroundPower(D)V
    .registers 3

    .line 104
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForegroundPower:D

    return-void
.end method

.method public setUid(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    return-void
.end method
