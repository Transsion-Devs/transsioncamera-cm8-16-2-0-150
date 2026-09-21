.class public final Lcom/bef/byteeffect/AssetResourceFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/byteeffect/ResourceFinder;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bef/byteeffect/AssetResourceFinder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 16
    iput-object p2, p0, Lcom/bef/byteeffect/AssetResourceFinder;->mDir:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreateAssetResourceFinder(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method private static native nativeReleaseAssetResourceFinder(J)V
.end method


# virtual methods
.method public declared-synchronized createNativeResourceFinder(J)J
    .registers 5

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/bef/byteeffect/AssetResourceFinder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/bef/byteeffect/AssetResourceFinder;->mDir:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/bef/byteeffect/AssetResourceFinder;->nativeCreateAssetResourceFinder(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized release(J)V
    .registers 3

    monitor-enter p0

    .line 38
    :try_start_1
    invoke-static {p1, p2}, Lcom/bef/byteeffect/AssetResourceFinder;->nativeReleaseAssetResourceFinder(J)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 39
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method
