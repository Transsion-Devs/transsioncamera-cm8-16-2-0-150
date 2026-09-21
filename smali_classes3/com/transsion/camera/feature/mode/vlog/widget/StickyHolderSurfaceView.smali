.class public Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field private stickySurfaceHolder:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-super {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->stickySurfaceHolder:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->stickySurfaceHolder:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    return-object p0
.end method
