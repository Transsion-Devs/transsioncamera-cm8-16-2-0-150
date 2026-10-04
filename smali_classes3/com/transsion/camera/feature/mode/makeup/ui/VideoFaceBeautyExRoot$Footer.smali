.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Footer"
.end annotation


# instance fields
.field public blackDrawableId:I

.field public drawableId:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;II)V
    .registers 4

    .line 1368
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 1369
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    .line 1370
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->blackDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa05

    return p0
.end method
