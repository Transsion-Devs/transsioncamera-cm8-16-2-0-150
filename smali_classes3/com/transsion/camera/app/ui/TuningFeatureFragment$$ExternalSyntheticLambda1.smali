.class public final synthetic Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->$r8$lambda$AQja70gRb8yJ1zz3QDu616Hfdjs(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
