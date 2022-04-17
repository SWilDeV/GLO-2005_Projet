<template>
  <b-form>
    <div class="row gutters-sm">
      <div class="col-sm-12">
        <div class="card h-100">
          <div class="card-body">
            <h6 class="d-flex align-items-center mb-3">
              <i class="material-icons text-info mr-2">Ajouter des membres</i>
            </h6>
            <div class="d-flex justify-content-center flex-wrap">
              <b-form-group
                id="input-group-3"
                label="Choisir un utilisateur"
                label-for="input-3"
              >
                <b-form-select v-model="form.IdUser" :options="options">
                  <template #first>
                    <b-form-select-option value="" />
                  </template>
                </b-form-select>
              </b-form-group>

              <b-button
                type="button"
                variant="success"
                v-on:click="onClickAddUser"
                class="ms-auto"
                >Ajouter</b-button
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </b-form>
</template>

<script>
export default {
  name: "AjoutMember",
  props: {
    AllUsers: Array,
    JoueursInscrits: Array,
    IdEquipe: Number,
  },
  data() {
    return {
      form: {
        IdUser: "",
      },
    };
  },
  computed: {
    options() {
      return this.AllUsers.filter((item) =>
        this.JoueursInscrits.every((res) => res.id !== item.id)
      )
        .map((user) => ({
          text: user.name,
          value: user.id,
        }))
        .sort((a, b) => (a.text >= b.text ? 1 : -1));
    },
  },
  methods: {
    onClickAddUser() {
      const IdEquipe = this.IdEquipe;
      const IdUser = this.form.IdUser;
      this.$emit("add-user-to-team", { IdEquipe, IdUser });

      this.form.IdUser = "";
    },
  },
};
</script>

<style></style>
