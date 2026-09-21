.class Lcom/ss/android/vesdk/VEEditor$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 1127
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMattingDoneCallback(F)I
    .registers 3

    .line 1143
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 p0, -0x64

    return p0

    .line 1146
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEMattingListener;->onMattingDoneCallback(F)I

    move-result p0

    return p0
.end method

.method public onMattingErrorCallback(IIF)I
    .registers 5

    .line 1130
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 p0, -0x64

    return p0

    .line 1133
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object p0

    const-string v0, "init model error"

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEListener$VEMattingListener;->onMattingErrorCallback(IIFLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onMattingProgressCallback(IFFZ)I
    .registers 6

    .line 1149
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 p0, -0x64

    return p0

    .line 1152
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEMattingListener;->onMattingProgressCallback(IFFZ)I

    move-result p0

    return p0
.end method

.method public onMattingStartedCallback()I
    .registers 2

    .line 1137
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 p0, -0x64

    return p0

    .line 1140
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$9;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/VEListener$VEMattingListener;->onMattingStartedCallback()I

    move-result p0

    return p0
.end method
