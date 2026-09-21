.class Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/librarian/LibrarianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LibRecorder"
.end annotation


# instance fields
.field loaded:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;->loaded:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 715
    iget-boolean p0, p0, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;->loaded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
