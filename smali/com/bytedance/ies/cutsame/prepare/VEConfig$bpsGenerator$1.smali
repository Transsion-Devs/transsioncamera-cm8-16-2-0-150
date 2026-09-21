.class final Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/VEConfig;-><init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/prepare/VEConfig;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/prepare/VEConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/Integer;
    .registers 3

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 34
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getDefaultBps()I

    move-result p0

    goto :goto_21

    .line 32
    :cond_c
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getBpsConfig()Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->getBpsFor1080p()I

    move-result p0

    goto :goto_21

    .line 33
    :cond_17
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getBpsConfig()Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->getBpsFor720p()I

    move-result p0

    .line 34
    :goto_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;->invoke(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
