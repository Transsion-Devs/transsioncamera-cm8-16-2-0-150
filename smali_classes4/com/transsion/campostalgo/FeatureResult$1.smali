.class Lcom/transsion/campostalgo/FeatureResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/campostalgo/FeatureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/campostalgo/FeatureResult;
    .registers 3

    .line 55
    :try_start_0
    new-instance p0, Lcom/transsion/campostalgo/FeatureResult;

    invoke-direct {p0}, Lcom/transsion/campostalgo/FeatureResult;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureResult;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 59
    const-string p1, "FeatureResult"

    const-string v0, "Exception creating FeatureResult from parcel"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/campostalgo/FeatureResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/campostalgo/FeatureResult;
    .registers 2

    .line 66
    new-array p0, p1, [Lcom/transsion/campostalgo/FeatureResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureResult$1;->newArray(I)[Lcom/transsion/campostalgo/FeatureResult;

    move-result-object p0

    return-object p0
.end method
