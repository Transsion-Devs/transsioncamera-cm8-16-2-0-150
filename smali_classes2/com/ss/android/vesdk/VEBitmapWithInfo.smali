.class public Lcom/ss/android/vesdk/VEBitmapWithInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEBitmapWithInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public colorPrimary:I

.field public colorSpace:I

.field public colorTransfer:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lcom/ss/android/vesdk/VEBitmapWithInfo$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEBitmapWithInfo$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    sget-object p1, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->UNKNOWN:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorSpace:I

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorPrimary:I

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorTransfer:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;III)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    iput p2, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorSpace:I

    .line 45
    iput p3, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorPrimary:I

    .line 46
    iput p4, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorTransfer:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorSpace:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorPrimary:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorTransfer:I

    .line 78
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setColorInfo(III)V
    .registers 4

    .line 69
    iput p1, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorSpace:I

    .line 70
    iput p2, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorPrimary:I

    .line 71
    iput p3, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorTransfer:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 83
    iget v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorPrimary:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->colorTransfer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
