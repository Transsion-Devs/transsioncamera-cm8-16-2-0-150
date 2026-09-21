.class Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;->fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$1;->this$0:Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
