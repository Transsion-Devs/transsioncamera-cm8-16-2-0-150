.class Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompatInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadEmojiCompatRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 137
    :try_start_0
    const-string p0, "EmojiCompat.EmojiCompatInitializer.run"

    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_14

    if-nez p0, :cond_f

    .line 142
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    .line 139
    :cond_f
    :try_start_f
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    const/4 p0, 0x0

    throw p0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p0

    .line 142
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 143
    throw p0
.end method
