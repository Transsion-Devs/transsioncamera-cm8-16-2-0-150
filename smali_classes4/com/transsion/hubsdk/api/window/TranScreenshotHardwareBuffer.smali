.class public Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TranScreenshotHardwareBuffer"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColorSpace:Landroid/graphics/ColorSpace;

.field private mContainsHdrLayers:Z

.field private mContainsSecureLayers:Z

.field private mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 47
    iput-object p2, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 48
    iput-boolean p3, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 49
    iput-boolean p4, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-class v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_29

    .line 60
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 61
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_2f

    .line 62
    :cond_29
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3b

    move v0, v2

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_45

    move v1, v2

    :cond_45
    iput-boolean v1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method


# virtual methods
.method public asBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public containsHdrLayers()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return p0
.end method

.method public containsSecureLayers()Z
    .registers 1

    .line 155
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public setContainsHdrLayers(Z)V
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method

.method public setContainsSecureLayers(Z)V
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return-void
.end method

.method public setHardwareBuffer(Landroid/hardware/HardwareBuffer;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    iget-object p2, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
