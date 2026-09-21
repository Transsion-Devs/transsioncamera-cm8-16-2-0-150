.class public abstract Lorg/apache/commons/io/file/SimplePathVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/file/PathVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;",
        "Lorg/apache/commons/io/file/PathVisitor;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method
