.class public final Lcom/bytedance/ies/cutsame/util/ExtraKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/util/ExtraKeys$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/util/ExtraKeys$Companion;

.field public static final MUSIC_NAME:Ljava/lang/String; = "music_name"

.field public static final PIP_TRACK_INDEX:Ljava/lang/String; = "pip_track_index"

.field public static final SLOT_EXTRA_PROCESSOR_GAME_ORIGIN_SLOT:Ljava/lang/String; = "origin_slot"

.field public static final SLOT_EXTRA_PROCESSOR_GAME_PLAY_TYPE:Ljava/lang/String; = "processor_game_play_type"

.field public static final STICKER_INDEX:Ljava/lang/String; = "sticker_index"

.field public static final TRACK_AUDIO:Ljava/lang/String; = "audio"

.field public static final TRACK_EXTRA_PIP:Ljava/lang/String; = "track_extra_pip"

.field public static final TRACK_EXTRA_PROCESSOR_TRACK_KEY:Ljava/lang/String; = "processor_origin"

.field public static final TRACK_INDEX:Ljava/lang/String; = "track_index"

.field public static final TRACK_LAYER:Ljava/lang/String; = "track_layer"

.field public static final TRACK_STICKER:Ljava/lang/String; = "sticker"

.field public static final TRACK_TYPE:Ljava/lang/String; = "track_type"

.field public static final TRACK_VIDEO:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/util/ExtraKeys$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/util/ExtraKeys$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/ExtraKeys;->Companion:Lcom/bytedance/ies/cutsame/util/ExtraKeys$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
