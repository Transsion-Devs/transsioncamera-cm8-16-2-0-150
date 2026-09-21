.class abstract Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/transsion/camera/manager/ThumbnailCache;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/transsion/camera/manager/ThumbnailCache;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;->sInstance:Lcom/transsion/camera/manager/ThumbnailCache;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/manager/ThumbnailCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/manager/ThumbnailCache;-><init>(Lcom/transsion/camera/manager/ThumbnailCache-IA;)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;->sInstance:Lcom/transsion/camera/manager/ThumbnailCache;

    return-void
.end method
