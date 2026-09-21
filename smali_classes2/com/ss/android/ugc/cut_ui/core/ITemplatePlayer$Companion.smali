.class public final Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;

.field public static final PLAYER_STATE_DESTROYED:I = 0x3ef

.field public static final PLAYER_STATE_ERROR:I = 0x3ee

.field public static final PLAYER_STATE_IDLE:I = 0x3e9

.field public static final PLAYER_STATE_PAUSED:I = 0x3ec

.field public static final PLAYER_STATE_PLAYING:I = 0x3ed

.field public static final PLAYER_STATE_PREPARED:I = 0x3ea

.field public static final PLAYER_STATE_VE_PREPARED:I = 0x3eb


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
