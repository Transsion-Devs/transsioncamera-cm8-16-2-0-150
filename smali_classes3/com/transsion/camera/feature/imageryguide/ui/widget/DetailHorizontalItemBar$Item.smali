.class Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mBounds:Landroid/graphics/RectF;

.field mCenterX:F

.field mIsSelected:Z

.field mText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;-><init>()V

    return-void
.end method
