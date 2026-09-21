.class public final synthetic Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gallery20/sdk/ai_art/network/ProgressCallback;


# instance fields
.field public final synthetic f$0:D

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$DoubleRef;

.field public final synthetic f$2:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;


# direct methods
.method public synthetic constructor <init>(DLkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;->f$0:D

    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$DoubleRef;

    iput-object p4, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;->f$2:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .registers 13

    .line 0
    iget-wide v0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;->f$0:D

    iget-object v2, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v3, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;->f$2:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->$r8$lambda$AMj53nDQmxSV2qwv_43Z3zP4PS0(DLkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;JJ)V

    return-void
.end method
