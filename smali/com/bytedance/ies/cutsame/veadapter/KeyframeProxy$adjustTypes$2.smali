.class final Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;-><init>(Lcom/ss/android/vesdk/VEEditor;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;)V
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
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;->INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    const-string v10, "vignetting"

    .line 30
    const-string v11, "particle"

    const-string v0, "brightness"

    const-string v1, "contrast"

    const-string v2, "saturation"

    const-string v3, "sharpen"

    const-string v4, "highlight"

    const-string v5, "shadow"

    const-string v6, "temperature"

    const-string v7, "tone"

    const-string v8, "fade"

    const-string v9, "light_sensation"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
