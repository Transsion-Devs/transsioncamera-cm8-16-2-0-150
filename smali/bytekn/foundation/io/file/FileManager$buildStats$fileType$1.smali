.class final Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbytekn/foundation/io/file/FileManager;->buildStats(Ljava/io/File;)Lbytekn/foundation/io/file/FileMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;->$file:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lbytekn/foundation/io/file/FileType;
    .registers 2

    .line 80
    iget-object v0, p0, Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;->$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lbytekn/foundation/io/file/FileType;->Directory:Lbytekn/foundation/io/file/FileType;

    return-object p0

    .line 81
    :cond_b
    iget-object p0, p0, Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;->$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lbytekn/foundation/io/file/FileType;->Regular:Lbytekn/foundation/io/file/FileType;

    return-object p0

    .line 82
    :cond_16
    sget-object p0, Lbytekn/foundation/io/file/FileType;->Unknown:Lbytekn/foundation/io/file/FileType;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;->invoke()Lbytekn/foundation/io/file/FileType;

    move-result-object p0

    return-object p0
.end method
