.class public final synthetic Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/file/PathFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/file/PathFilter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/io/file/PathFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/io/file/PathFilter;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->$r8$lambda$kL69JAh52ACIh8i7n4ongwS1dT0(Lorg/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
