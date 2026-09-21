.class public final synthetic Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda0;->f$0:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final progressChanged(Lcom/obs/services/model/ProgressStatus;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda0;->f$0:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->$r8$lambda$lRdhxrKtv8JSz4WpWz2pxbCvYfc(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lcom/obs/services/model/ProgressStatus;)V

    return-void
.end method
