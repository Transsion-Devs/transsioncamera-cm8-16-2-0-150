.class public Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBackground:I

.field public mConsumer:D

.field public mForeground:I

.field public mUid:I


# direct methods
.method public constructor <init>(IIID)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    .line 11
    iput p2, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    .line 12
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    .line 13
    iput-wide p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    return-void
.end method


# virtual methods
.method public getBackground()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    return p0
.end method

.method public getConsumer()D
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    return-wide v0
.end method

.method public getForeground()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    return p0
.end method

.method public setBackground(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mBackground:I

    return-void
.end method

.method public setConsumer(D)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mConsumer:D

    return-void
.end method

.method public setForeground(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mForeground:I

    return-void
.end method

.method public setUid(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;->mUid:I

    return-void
.end method
