.class public Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsReset:I

.field public mTimeStamp:J

.field public mUidConsumer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mTimeStamp:J

    .line 12
    iput p3, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mIsReset:I

    .line 13
    iput-object p4, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mUidConsumer:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIsReset()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mIsReset:I

    return p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mTimeStamp:J

    return-wide v0
.end method

.method public getUidConsumer()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mUidConsumer:Ljava/util/List;

    return-object p0
.end method

.method public setIsReset(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mIsReset:I

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 31
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mTimeStamp:J

    return-void
.end method

.method public setUidConsumer(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;->mUidConsumer:Ljava/util/List;

    return-void
.end method
