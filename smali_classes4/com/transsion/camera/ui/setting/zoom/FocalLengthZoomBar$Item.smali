.class Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field mBounds:Landroid/graphics/RectF;

.field mCenterX:F

.field mDegree:F

.field mFocalLength:Ljava/lang/String;

.field mIsSelected:Z

.field mLensType:I

.field mZoomRatio:I


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V
    .registers 2

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V

    return-void
.end method
