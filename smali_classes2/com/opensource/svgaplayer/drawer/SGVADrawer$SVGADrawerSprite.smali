.class public final Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SVGADrawerSprite"
.end annotation


# instance fields
.field private _frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

.field private _imageKey:Ljava/lang/String;

.field private _matteKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .registers 5

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 21
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;-><init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V

    return-void
.end method


# virtual methods
.method public final getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getImageKey()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getMatteKey()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-object p0
.end method

.method public final set_frameEntity(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method

.method public final set_imageKey(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-void
.end method

.method public final set_matteKey(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-void
.end method
