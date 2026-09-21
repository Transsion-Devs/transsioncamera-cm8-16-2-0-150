.class public interface abstract Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canAddMoreManagedProfiles(IZ)Z
.end method

.method public abstract canAddMoreProfilesToUser(Ljava/lang/String;I)Z
.end method

.method public abstract createProfile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UserHandle;
.end method

.method public abstract createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
.end method

.method public abstract createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
.end method

.method public abstract getAllProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCredentialOwnerProfile(I)I
.end method

.method public abstract getProfileIdsWithDisabled(I)[I
.end method

.method public abstract getProfiles(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserInfo(I)Lcom/transsion/hubsdk/api/os/TranUserInfo;
.end method

.method public abstract getUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsers(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAdminUser()Z
.end method

.method public abstract isManagedProfile(I)Z
.end method

.method public abstract isUserAdmin(I)Z
.end method

.method public abstract removeUserEvenWhenDisallowed(I)Z
.end method

.method public abstract setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
.end method
