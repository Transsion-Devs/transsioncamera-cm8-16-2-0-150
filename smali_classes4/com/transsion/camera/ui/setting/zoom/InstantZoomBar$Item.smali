.class Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field mBounds:Landroid/graphics/RectF;

.field mCenterX:F

.field mIsSelected:Z

.field mText:Ljava/lang/String;

.field mValue:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;-><init>()V

    return-void
.end method
