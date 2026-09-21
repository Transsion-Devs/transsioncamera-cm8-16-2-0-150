.class public Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field private mAllowEmpty:Ljava/lang/String;

.field private mReferers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public addReferer(Ljava/lang/String;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mReferers:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mReferers:Ljava/util/ArrayList;

    .line 30
    :cond_b
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mReferers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllowEmpty()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mAllowEmpty:Ljava/lang/String;

    return-object p0
.end method

.method public getReferers()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mReferers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setAllowEmpty(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mAllowEmpty:Ljava/lang/String;

    return-void
.end method

.method public setReferers(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->mReferers:Ljava/util/ArrayList;

    return-void
.end method
