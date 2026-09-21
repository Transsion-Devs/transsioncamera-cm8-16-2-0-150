.class public final Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IMAGE_GETTER_MUTEX:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;->IMAGE_GETTER_MUTEX:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getIMAGE_GETTER_MUTEX$p()Lkotlinx/coroutines/sync/Mutex;
    .registers 1

    .line 1
    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;->IMAGE_GETTER_MUTEX:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method
