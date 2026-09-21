.class Lcom/ss/android/vesdk/VEEditor$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$12;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor$12;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor$12;)V
    .registers 2

    .line 5136
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$12$1;->this$0:Lcom/ss/android/vesdk/VEEditor$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 5139
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$12$1;->this$0:Lcom/ss/android/vesdk/VEEditor$12;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$12;->val$videoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 5140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$12$1;->this$0:Lcom/ss/android/vesdk/VEEditor$12;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$12;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    if-eqz p0, :cond_11

    const/4 v0, -0x1

    .line 5141
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;->onReverseDone(I)V

    :cond_11
    return-void
.end method
