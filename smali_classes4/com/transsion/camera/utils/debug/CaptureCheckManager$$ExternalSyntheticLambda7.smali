.class public final synthetic Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/debug/CaptureCheckManager;

.field public final synthetic f$1:Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    iput-object p2, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;->f$1:Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    iget-object p0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;->f$1:Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->$r8$lambda$UH5XOyBZAOuQdUHKfpdLEs9Qe9g(Lcom/transsion/camera/utils/debug/CaptureCheckManager;Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)V

    return-void
.end method
