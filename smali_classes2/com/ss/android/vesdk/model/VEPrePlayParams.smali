.class public Lcom/ss/android/vesdk/model/VEPrePlayParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/model/VEPrePlayParams$StopStrategy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/model/VEPrePlayParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:I

.field public isLoop:Z

.field public stopStrategy:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/ss/android/vesdk/model/VEPrePlayParams$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/model/VEPrePlayParams$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->duration:I

    .line 45
    iput-boolean p2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->isLoop:Z

    return-void
.end method

.method public constructor <init>(IZI)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->duration:I

    .line 56
    iput-boolean p2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->isLoop:Z

    .line 57
    iput p3, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->duration:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    iput-boolean v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->isLoop:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 68
    iget p2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean p2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->isLoop:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget p0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
