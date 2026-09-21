.class public Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public CMTime:D

.field public clientVertexes:[F

.field public clientVertexesLength:[I

.field public firstTriggerTime:D

.field public timestamp:[D

.field public totalTriggerTime:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->CMTime:D

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->firstTriggerTime:D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->totalTriggerTime:D

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->timestamp:[D

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->clientVertexes:[F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->clientVertexesLength:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 61
    iget-wide v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->CMTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 62
    iget-wide v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->firstTriggerTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    iget-wide v0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->totalTriggerTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    iget-object p2, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->timestamp:[D

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 65
    iget-object p2, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->clientVertexes:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 66
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;->clientVertexesLength:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
