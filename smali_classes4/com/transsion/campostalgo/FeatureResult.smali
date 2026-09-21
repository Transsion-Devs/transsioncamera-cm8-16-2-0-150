.class public Lcom/transsion/campostalgo/FeatureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/campostalgo/FeatureResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStreams:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/transsion/campostalgo/FeatureResult$1;

    invoke-direct {v0}, Lcom/transsion/campostalgo/FeatureResult$1;-><init>()V

    sput-object v0, Lcom/transsion/campostalgo/FeatureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureResult;->mStreams:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getStreams()Ljava/util/Vector;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureResult;->mStreams:Ljava/util/Vector;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 86
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureResult;->mStreams:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 87
    const-class v0, Lcom/transsion/campostalgo/Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget-object v2, p1, v1

    .line 90
    check-cast v2, Lcom/transsion/campostalgo/Stream;

    .line 91
    iget-object v3, p0, Lcom/transsion/campostalgo/FeatureResult;->mStreams:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
