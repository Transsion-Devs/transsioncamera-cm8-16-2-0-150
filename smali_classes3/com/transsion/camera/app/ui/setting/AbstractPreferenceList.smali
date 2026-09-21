.class public abstract Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addGeneralPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract addPhotoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract addVideoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract getPreferenceResource()I
.end method
