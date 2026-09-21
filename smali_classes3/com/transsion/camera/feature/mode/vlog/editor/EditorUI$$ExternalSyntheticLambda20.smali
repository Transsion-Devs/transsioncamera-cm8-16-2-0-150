.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda20;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda20;->f$0:J

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->$r8$lambda$7fZ-RFmZHFHF_wgqeXaEU5JERNg(JLcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    return-void
.end method
