.class public Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam$VEAudioSamiType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VEAudioSamiType"
.end annotation


# static fields
.field public static final VEAUDIO_SAMI_FTGRUENOISE:I = 0x2

.field public static final VEAUDIO_SAMI_TCNDENOISE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam$VEAudioSamiType;->this$0:Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
