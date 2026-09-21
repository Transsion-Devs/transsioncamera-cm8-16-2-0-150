.class public interface abstract Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;,
        Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$ITemplatePlayerState;,
        Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;

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

    sget-object v0, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;

    sput-object v0, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;->Companion:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Companion;

    return-void
.end method


# virtual methods
.method public abstract pause()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract seekToDone(IZ)V
.end method

.method public abstract setDataSource(Lcom/ss/android/ugc/cut_ui/core/ITemplateSource;)V
.end method

.method public abstract setOnErrorListener(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;)V
.end method

.method public abstract setOnStateChangedListener(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;)V
.end method

.method public abstract setSurface(Landroid/view/SurfaceView;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
