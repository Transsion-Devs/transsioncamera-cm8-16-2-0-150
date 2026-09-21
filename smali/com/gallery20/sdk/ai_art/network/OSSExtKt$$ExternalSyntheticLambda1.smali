.class public final synthetic Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;->f$0:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;->f$1:[B

    return-void
.end method


# virtual methods
.method public final progressChanged(Lcom/obs/services/model/ProgressStatus;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;->f$0:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;->f$1:[B

    invoke-static {v0, p0, p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->$r8$lambda$ICzrm4unmd4APeZwXGRAmu0W8e0(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;[BLcom/obs/services/model/ProgressStatus;)V

    return-void
.end method
