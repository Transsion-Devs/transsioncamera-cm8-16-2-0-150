.class abstract Lcom/transsion/camera/utils/threads/HandlerThreadPool$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/threads/HandlerThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/utils/threads/HandlerThreadPool;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/threads/HandlerThreadPool;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$Holder;->INSTANCE:Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;-><init>(Lcom/transsion/camera/utils/threads/HandlerThreadPool-IA;)V

    sput-object v0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$Holder;->INSTANCE:Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    return-void
.end method
