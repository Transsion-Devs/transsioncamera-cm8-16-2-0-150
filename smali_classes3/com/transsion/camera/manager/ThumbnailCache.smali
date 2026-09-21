.class public Lcom/transsion/camera/manager/ThumbnailCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBitmapMap:Ljava/util/Map;

.field private final mThumbnailListeners:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailCache"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mBitmapMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/manager/ThumbnailCache-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/manager/ThumbnailCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/manager/ThumbnailCache;
    .registers 1

    .line 50
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;->-$$Nest$sfgetsInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 83
    sget-object p1, Lcom/transsion/camera/manager/ThumbnailCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyFileSaved mThumbnailListeners: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_25

    return-void

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 85
    throw p0
.end method
