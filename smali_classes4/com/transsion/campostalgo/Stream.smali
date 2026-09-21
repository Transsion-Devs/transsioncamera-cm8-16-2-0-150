.class public Lcom/transsion/campostalgo/Stream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/campostalgo/Stream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSensorId:I

.field private mStreamType:I

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcom/transsion/campostalgo/Stream$1;

    invoke-direct {v0}, Lcom/transsion/campostalgo/Stream$1;-><init>()V

    sput-object v0, Lcom/transsion/campostalgo/Stream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getmSensorId()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/transsion/campostalgo/Stream;->mSensorId:I

    return p0
.end method

.method public getmSurface()Landroid/view/Surface;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/campostalgo/Stream;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/campostalgo/Stream;->mStreamType:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/campostalgo/Stream;->mSensorId:I

    .line 107
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    iput-object p1, p0, Lcom/transsion/campostalgo/Stream;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 94
    iget v0, p0, Lcom/transsion/campostalgo/Stream;->mStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/transsion/campostalgo/Stream;->mSensorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object p0, p0, Lcom/transsion/campostalgo/Stream;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
