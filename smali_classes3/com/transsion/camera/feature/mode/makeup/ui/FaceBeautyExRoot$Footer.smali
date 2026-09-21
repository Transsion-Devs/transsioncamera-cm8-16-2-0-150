.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Footer"
.end annotation


# instance fields
.field public blackDrawableId:I

.field public drawableId:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;II)V
    .registers 4

    .line 923
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 924
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->drawableId:I

    .line 925
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->blackDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa05

    return p0
.end method
