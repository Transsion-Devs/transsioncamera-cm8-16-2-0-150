.class Lcom/transsion/campostalgo/FeatureParam$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/campostalgo/FeatureParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/campostalgo/FeatureParam;
    .registers 3

    .line 58
    :try_start_0
    new-instance p0, Lcom/transsion/campostalgo/FeatureParam;

    invoke-direct {p0}, Lcom/transsion/campostalgo/FeatureParam;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureParam;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 62
    const-string p1, "FeatureParam"

    const-string v0, "Exception creating FeatureParam from parcel"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/campostalgo/FeatureParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/campostalgo/FeatureParam;
    .registers 2

    .line 69
    new-array p0, p1, [Lcom/transsion/campostalgo/FeatureParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureParam$1;->newArray(I)[Lcom/transsion/campostalgo/FeatureParam;

    move-result-object p0

    return-object p0
.end method
