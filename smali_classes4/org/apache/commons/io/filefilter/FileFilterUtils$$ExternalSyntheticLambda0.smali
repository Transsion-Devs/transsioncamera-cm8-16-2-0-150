.class public final synthetic Lorg/apache/commons/io/filefilter/FileFilterUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/FileFilterUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/apache/commons/io/filefilter/FileFilterUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

    check-cast p1, Ljava/io/File;

    invoke-interface {p0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
