.class public final Lcom/bef/byteeffect/FileResourceFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/byteeffect/ResourceFinder;


# instance fields
.field private final mDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bef/byteeffect/FileResourceFinder;->mDir:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreateFileResourceFinder(JLjava/lang/String;)J
.end method


# virtual methods
.method public createNativeResourceFinder(J)J
    .registers 3

    .line 21
    iget-object p0, p0, Lcom/bef/byteeffect/FileResourceFinder;->mDir:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/bef/byteeffect/FileResourceFinder;->nativeCreateFileResourceFinder(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public release(J)V
    .registers 3

    return-void
.end method
