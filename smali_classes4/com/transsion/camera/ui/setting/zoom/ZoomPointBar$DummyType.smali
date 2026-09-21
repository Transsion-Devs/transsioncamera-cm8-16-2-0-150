.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$DummyType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyType"
.end annotation


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 2

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$DummyType;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    return-void
.end method

.method public getContentWidth()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getItemByRatio(I)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomItemNum()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomItems()Ljava/util/List;
    .registers 1

    .line 806
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public isOutOfContent(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onCurrentItemSelected()V
    .registers 1

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public updateItemPosition()V
    .registers 1

    return-void
.end method
