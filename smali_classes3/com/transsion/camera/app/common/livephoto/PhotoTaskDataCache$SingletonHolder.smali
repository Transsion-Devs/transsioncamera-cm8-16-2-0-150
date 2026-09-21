.class abstract Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache$SingletonHolder;->INSTANCE:Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;-><init>(Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache-IA;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache$SingletonHolder;->INSTANCE:Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    return-void
.end method
