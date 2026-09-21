.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;
    .registers 1

    .line 19
    new-instance p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;->invoke()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    move-result-object p0

    return-object p0
.end method
